
package Paws::GroundStation::CancelContact;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw//;
  has ContactId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CancelContact');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/contact/{contactId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::ContactIdResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ContactId' => 'contactId'
                  },
  'types' => {
               'ContactId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'ContactId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::CancelContact - Arguments for method CancelContact on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelContact on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method CancelContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelContact.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ContactIdResponse = $groundstation->CancelContact(
      ContactId => 'MyString',

    );

    # Results:
    my $ContactId = $ContactIdResponse->ContactId;

    # Returns a L<Paws::GroundStation::ContactIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/CancelContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

UUID of a contact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelContact in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

