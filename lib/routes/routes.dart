class TRoutes {
  static const login = '/login';
  static const forgetPassword = '/forget-password/';
  static const resetPassword = '/reset-password';
  static const dashboard = '/dashboard';
  static const media = '/media';

  static const banners = '/banners';
  static const createBanner = '/createBanner';
  static const editBanner = '/editBanner';

  static const products = '/products';
  static const createProduct = '/createProduct';
  static const editProduct = '/editProduct';

  static const categories = '/categories';
  static const createCategory = '/createCategory';
  static const editCategory = '/editCategory';

  static const brands = '/brands';
  static const createBrand = '/createBrand';
  static const editBrand = '/editBrand';

  static const customers = '/customers';
  static const createCustomer = '/createCustomer';
  static const customerDetails = '/customerDetails';

  static const orders = '/orders';
  static const coupons = '/coupons';
  static const settings = '/settings';
  static const profile = '/profile';

  static const sideBarMenuItems = [
    dashboard,
    media,
    products,
    categories,
    brands,
    customers,
    orders,
    coupons,
    settings,
    profile,
  ];
}
