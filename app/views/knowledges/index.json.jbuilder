# frozen_string_literal: true

json.array! @knowledges, partial: 'knowledges/knowledge', as: :knowledge
