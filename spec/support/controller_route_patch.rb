module ControllerRoutePatch
  def get(action, *args)
    process_action(action, "GET", *args)
  end

  def post(action, *args)
    process_action(action, "POST", *args)
  end

  def patch(action, *args)
    process_action(action, "PATCH", *args)
  end

  def put(action, *args)
    process_action(action, "PUT", *args)
  end

  def delete(action, *args)
    process_action(action, "DELETE", *args)
  end

  def head(action, *args)
    process_action(action, "HEAD", *args)
  end

private
  def process_action(action, method = 'GET', *args)
    if args.present?
      parameters = args.shift
    end
    parameters ||= {}
    process action, method, parameters.merge!(use_route: :docs), *args
  end
end
