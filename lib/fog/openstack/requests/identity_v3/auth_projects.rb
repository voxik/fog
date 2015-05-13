module Fog
  module Identity
    class OpenStack
      class V3
        class Real
          def auth_projects(options={})
            params = Hash.new
            params['page'] = options.fetch(:page, 1)
            params['per_page'] = options.fetch(:per_page, 30)

            request(
                :expects => [200],
                :method => 'GET',
                :path => "auth/projects",
                :query => params
            )

          end
        end

        class Mock
          def auth_projects

          end
        end
      end
    end
  end
end