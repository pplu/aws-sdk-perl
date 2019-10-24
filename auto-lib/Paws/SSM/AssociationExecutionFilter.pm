# Generated from default/object.tt
package Paws::SSM::AssociationExecutionFilter;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has Key => (is => 'ro', isa => Str, required => 1);
  has Type => (is => 'ro', isa => Str, required => 1);
  has Value => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Type' => {
                           'type' => 'Str'
                         },
               'Key' => {
                          'type' => 'Str'
                        }
             },
  'IsRequired' => {
                    'Value' => 1,
                    'Type' => 1,
                    'Key' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AssociationExecutionFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AssociationExecutionFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AssociationExecutionFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Filters used in the request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key value used in the request.


=head2 B<REQUIRED> Type => Str

  The filter type specified in the request.


=head2 B<REQUIRED> Value => Str

  The value specified for the key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

