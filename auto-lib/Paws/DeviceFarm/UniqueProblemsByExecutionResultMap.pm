# Generated from default/map_enum.tt
package Paws::DeviceFarm::UniqueProblemsByExecutionResultMap;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');
  use Types::Standard qw/ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_UniqueProblem/;
  has ERRORED => (is => 'ro', isa => ArrayRef[DeviceFarm_UniqueProblem]);
  has FAILED => (is => 'ro', isa => ArrayRef[DeviceFarm_UniqueProblem]);
  has PASSED => (is => 'ro', isa => ArrayRef[DeviceFarm_UniqueProblem]);
  has PENDING => (is => 'ro', isa => ArrayRef[DeviceFarm_UniqueProblem]);
  has SKIPPED => (is => 'ro', isa => ArrayRef[DeviceFarm_UniqueProblem]);
  has STOPPED => (is => 'ro', isa => ArrayRef[DeviceFarm_UniqueProblem]);
  has WARNED => (is => 'ro', isa => ArrayRef[DeviceFarm_UniqueProblem]);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'ERRORED' => {
                                          type => 'ArrayRef[DeviceFarm_UniqueProblem]',                                          class => 'Paws::DeviceFarm::UniqueProblem',                                        },
                               'FAILED' => {
                                          type => 'ArrayRef[DeviceFarm_UniqueProblem]',                                          class => 'Paws::DeviceFarm::UniqueProblem',                                        },
                               'PASSED' => {
                                          type => 'ArrayRef[DeviceFarm_UniqueProblem]',                                          class => 'Paws::DeviceFarm::UniqueProblem',                                        },
                               'PENDING' => {
                                          type => 'ArrayRef[DeviceFarm_UniqueProblem]',                                          class => 'Paws::DeviceFarm::UniqueProblem',                                        },
                               'SKIPPED' => {
                                          type => 'ArrayRef[DeviceFarm_UniqueProblem]',                                          class => 'Paws::DeviceFarm::UniqueProblem',                                        },
                               'STOPPED' => {
                                          type => 'ArrayRef[DeviceFarm_UniqueProblem]',                                          class => 'Paws::DeviceFarm::UniqueProblem',                                        },
                               'WARNED' => {
                                          type => 'ArrayRef[DeviceFarm_UniqueProblem]',                                          class => 'Paws::DeviceFarm::UniqueProblem',                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UniqueProblemsByExecutionResultMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::UniqueProblemsByExecutionResultMap object:

  $service_obj->Method(Att1 => { ERRORED => $value, ..., WARNED => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::UniqueProblemsByExecutionResultMap object:

  $result = $service_obj->Method(...);
  $result->Att1->ERRORED

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ERRORED => 


=head2 FAILED => 


=head2 PASSED => 


=head2 PENDING => 


=head2 SKIPPED => 


=head2 STOPPED => 


=head2 WARNED => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

