# Generated from default/object.tt
package Paws::RedShift::DefaultClusterParameters;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_Parameter/;
  has Marker => (is => 'ro', isa => Str);
  has ParameterGroupFamily => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[RedShift_Parameter]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::RedShift::Parameter',
                                 'type' => 'ArrayRef[RedShift_Parameter]'
                               },
               'ParameterGroupFamily' => {
                                           'type' => 'Str'
                                         },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Parameters' => 'Parameter'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DefaultClusterParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::DefaultClusterParameters object:

  $service_obj->Method(Att1 => { Marker => $value, ..., Parameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::DefaultClusterParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Marker

=head1 DESCRIPTION

Describes the default cluster parameters for a parameter group family.

=head1 ATTRIBUTES


=head2 Marker => Str

  A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 ParameterGroupFamily => Str

  The name of the cluster parameter group family to which the engine
default parameters apply.


=head2 Parameters => ArrayRef[RedShift_Parameter]

  The list of cluster default parameters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

