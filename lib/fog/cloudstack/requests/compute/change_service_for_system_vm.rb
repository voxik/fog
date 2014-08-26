module Fog
  module Compute
    class Cloudstack

      class Real
        # Changes the service offering for a system vm (console proxy or secondary storage). The system vm must be in a "Stopped" state for this command to take effect.
        #
        # {CloudStack API Reference}[http://cloudstack.apache.org/docs/api/apidocs-4.3/root_admin/changeServiceForSystemVm.html]
        def change_service_for_system_vm(options={})
          request(options)
        end


        def change_service_for_system_vm(id, serviceofferingid, options={})
          options.merge!(
            'command' => 'changeServiceForSystemVm', 
            'id' => id, 
            'serviceofferingid' => serviceofferingid  
          )
          request(options)
        end
      end

    end
  end
end

