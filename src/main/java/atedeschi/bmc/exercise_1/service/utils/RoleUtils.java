package atedeschi.bmc.exercise_1.service.utils;

import org.apache.commons.lang3.StringUtils;

import atedeschi.bmc.exercise_1.model.SpecialUser;

public class RoleUtils {

	private static final String KEY_ADMIN_ROLE = "ADM";

	private static final String KEY_SCOPE_CATALOG = "CATALOG";
	private static final String KEY_SCOPE_WAREHOUSE = "WAREHOUSE";
	private static final String KEY_SCOPE_ORDER = "WINE_ORDER";
	

	private RoleUtils() {}

	public static boolean isEnabledToCatalog(SpecialUser specialUser) {
		return isEnabledTo(specialUser, KEY_SCOPE_CATALOG);
	}

	public static boolean isEnabledToWarehouse(SpecialUser specialUser) {
		return isEnabledTo(specialUser, KEY_SCOPE_WAREHOUSE);
	}

	public static boolean isEnabledTo(SpecialUser specialUser, final String scope) {
		boolean result = false;
		if(specialUser!=null && specialUser.getRole()!=null) {
			
			switch (scope){
				case KEY_SCOPE_CATALOG:
					result = StringUtils.equalsIgnoreCase(specialUser.getRole().getCatalog(), KEY_ADMIN_ROLE);
				break;
				case KEY_SCOPE_WAREHOUSE:
					result = StringUtils.equalsIgnoreCase(specialUser.getRole().getWarehouse(), KEY_ADMIN_ROLE);
				break;
				case KEY_SCOPE_ORDER:
					result = StringUtils.equalsIgnoreCase(specialUser.getRole().getWine_order(), KEY_ADMIN_ROLE);
				break;
				default:
					result = false;
				break;
			}
		}
		return result;
	}

}
