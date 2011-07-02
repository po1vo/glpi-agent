package FusionInventory::Agent::Task::NetDiscovery::Manufacturer::Ddwrt;

use strict;
use warnings;

sub discovery {
   my ($empty, $description, $session) = @_;

   if ($description =~ m/Linux/) {
      my $description_new = $session->snmpGet({
                        oid => '.1.3.6.1.2.1.1.5.0',
                        up  => 1,
                     });
      if ($description_new eq "dd-wrt") {
         $description = "dd-wrt";
      }
   }
   return $description;
}

1;
