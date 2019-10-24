# Generated from default/object.tt
package Paws::DeviceFarm::UniqueProblem;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Problem/;
  has Message => (is => 'ro', isa => Str);
  has Problems => (is => 'ro', isa => ArrayRef[DeviceFarm_Problem]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Message' => {
                              'type' => 'Str'
                            },
               'Problems' => {
                               'class' => 'Paws::DeviceFarm::Problem',
                               'type' => 'ArrayRef[DeviceFarm_Problem]'
                             }
             },
  'NameInRequest' => {
                       'Message' => 'message',
                       'Problems' => 'problems'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UniqueProblem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::UniqueProblem object:

  $service_obj->Method(Att1 => { Message => $value, ..., Problems => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::UniqueProblem object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

A collection of one or more problems, grouped by their result.

=head1 ATTRIBUTES


=head2 Message => Str

  A message about the unique problems' result.


=head2 Problems => ArrayRef[DeviceFarm_Problem]

  Information about the problems.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

