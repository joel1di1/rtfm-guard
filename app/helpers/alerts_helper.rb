# frozen_string_literal: true

module AlertsHelper
  def tailwind_classes_for(flash_type)
    {
      info: 'text-blue-800 bg-blue-50 dark:bg-gray-800 dark:text-blue-400',
      notice: 'text-green-800 bg-green-50 dark:bg-gray-800 dark:text-green-400',
      error: 'text-red-800 bg-red-50 dark:bg-gray-800 dark:text-red-400',
      alert: 'text-yellow-800 bg-yellow-50 dark:bg-gray-800 dark:text-yellow-300'
    }.stringify_keys[flash_type.to_s] || raise(flash_type.to_s)
  end

  def tailwind_classes_close_for(flash_type)
    {
      info: 'bg-blue-50 text-blue-500 focus:ring-blue-400 hover:bg-blue-200 dark:bg-gray-800 dark:text-blue-400 dark:hover:bg-gray-700',
      notice: 'bg-green-50 text-green-500 focus:ring-green-400 hover:bg-green-200 dark:bg-gray-800 dark:text-green-400 dark:hover:bg-gray-700',
      error: 'bg-red-50 text-red-500 focus:ring-red-400 hover:bg-red-200 dark:bg-gray-800 dark:text-red-400 dark:hover:bg-gray-700',
      alert: 'bg-yellow-50 text-yellow-500 focus:ring-yellow-400 hover:bg-yellow-200 dark:bg-gray-800 dark:text-yellow-300 dark:hover:bg-gray-700'
    }.stringify_keys[flash_type.to_s] || raise(flash_type.to_s)
  end
end
