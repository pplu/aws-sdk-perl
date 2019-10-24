# Generated from default/object.tt
package Paws::EKS::Logging;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::EKS::Types qw/EKS_LogSetup/;
  has ClusterLogging => (is => 'ro', isa => ArrayRef[EKS_LogSetup]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterLogging' => {
                                     'class' => 'Paws::EKS::LogSetup',
                                     'type' => 'ArrayRef[EKS_LogSetup]'
                                   }
             },
  'NameInRequest' => {
                       'ClusterLogging' => 'clusterLogging'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::Logging

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::Logging object:

  $service_obj->Method(Att1 => { ClusterLogging => $value, ..., ClusterLogging => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::Logging object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterLogging

=head1 DESCRIPTION

An object representing the logging configuration for resources in your
cluster.

=head1 ATTRIBUTES


=head2 ClusterLogging => ArrayRef[EKS_LogSetup]

  The cluster control plane logging configuration for your cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

