package btl_aodv_omnet.simulations;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.AdhocHost;
import inet.physicallayer.wireless.ieee80211.bmac.BmacLayer;
import inet.environment.common.PhysicalEnvironment;
import inet.visualizer.contract.IIntegratedVisualizer;

network AodvNetwork
{
    parameters:
        int numHosts;
    submodules:
        visualizer: <default("IntegratedCanvasVisualizer")> like IIntegratedVisualizer;
        configurator: Ipv4NetworkConfigurator;
        radioMedium: <default("Ieee80211ScalarRadioMedium")> like inet.physicallayer.contract.IRadioMedium;
        physicalEnvironment: PhysicalEnvironment;
        host[numHosts]: AdhocHost {
            @display("i=device/pocketpc_s");
        }
}
