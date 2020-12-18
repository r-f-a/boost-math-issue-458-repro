#include <boost/math/distributions/gamma.hpp>
#include <iostream>
#include <cfenv>
#include <string>

void test() {
  std::feclearexcept(FE_ALL_EXCEPT);

  auto fpes = std::fetestexcept(FE_ALL_EXCEPT);
  std::cout << "Before: " << fpes << std::endl;

  double a = 7.525242623272228;
  double b = 0.790775193798450;
  auto dist = boost::math::gamma_distribution<double>(a, b);

  fpes = std::fetestexcept(FE_ALL_EXCEPT);
  std::cout << "After gamma_distribution: " << fpes << std::endl;

  double v = 0.8;
  auto res = boost::math::pdf<double>(dist, v);  // It fails here
  std::cout << "Result: " << res << std::endl;

  fpes = std::fetestexcept(FE_ALL_EXCEPT);
  std::cout << "After pdf: " << fpes << std::endl;

  std::string summary{};
  summary += ((fpes & FE_INVALID) != 0) ? "Invalid, " : "";
  summary += ((fpes & FE_DIVBYZERO) != 0) ? "DivByZero, " : "";
  summary += ((fpes & FE_OVERFLOW) != 0) ? "Overflow, " : "";
  summary += ((fpes & FE_UNDERFLOW) != 0) ? "Underflow, " : "";
  summary += ((fpes & FE_INEXACT) != 0) ? "Inexact, " : "";
  if (!summary.empty()) {
    summary.pop_back();
    summary.pop_back();
  }
  std::cout << "After pdf (summary): "<< summary << std::endl;
}


int main()
{
	test();
	return 0;
}
