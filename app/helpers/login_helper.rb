module LoginHelper
  def displayworkorders(workorders, &block)
    if (workorders.length == 0)
      content_tag(:h3, 'There are no workorders to display.')
    else
      concat "<table id='workorders'><tr>", block.binding
      concat '<th>Action</th>', block.binding
      concat '<th>Description</th>', block.binding
      concat '<th>Date</th>', block.binding
      concat '</tr>', block.binding

      for order in workorders do
        yield(order)
      end

      concat '</table>', block.binding
    end
  end
end