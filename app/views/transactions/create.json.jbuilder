if @transaction.persisted?
  json.entire_page render(partial: "properties/show_content", formats: :html, locals: { property: @property })
  # json.inserted_item render(partial: "restaurants/review", formats: :html, locals: {review: @review})
else
  json.form_with_errors render(partial: "transactions/form", formats: :html, locals: {property: @property, transaction: @transaction})
  json.errors @transaction.errors.full_messages
end
