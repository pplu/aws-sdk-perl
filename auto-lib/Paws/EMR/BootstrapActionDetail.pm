package Paws::EMR::BootstrapActionDetail;
  use Moose;
  has BootstrapActionConfig => (is => 'ro', isa => 'Paws::EMR::BootstrapActionConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::BootstrapActionDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::BootstrapActionDetail object:

  $service_obj->Method(Att1 => { BootstrapActionConfig => $value, ..., BootstrapActionConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::BootstrapActionDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->BootstrapActionConfig

=head1 DESCRIPTION

Reports the configuration of a bootstrap action in a job flow.

=head1 ATTRIBUTES


=head2 BootstrapActionConfig => L<Paws::EMR::BootstrapActionConfig>

  A description of the bootstrap action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

