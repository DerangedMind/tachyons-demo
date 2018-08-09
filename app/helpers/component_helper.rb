module ComponentHelper
  def partial(component, locals={})
    render partial: "components/partials/#{component}", locals: locals
  end

  def sandbox(component, locals={})
    render partial: "components/sandbox/#{component}", locals: locals
  end

  def draw(component, locals: {})
    render partial: "components/wf-tools/#{component}", locals: locals
  end

  def template(component, locals={})
    render partial: "components/templates/#{component}", locals: locals
  end
end
