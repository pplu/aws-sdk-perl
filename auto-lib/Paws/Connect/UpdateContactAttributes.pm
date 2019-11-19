
package Paws::Connect::UpdateContactAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_Attributes/;
  has Attributes => (is => 'ro', isa => Connect_Attributes, required => 1, predicate => 1);
  has InitialContactId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateContactAttributes');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/contact/attributes');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Connect::UpdateContactAttributesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Attributes' => {
                                 'type' => 'Connect_Attributes',
                                 'class' => 'Paws::Connect::Attributes'
                               },
               'InitialContactId' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'Attributes' => 1,
                    'InitialContactId' => 1,
                    'InstanceId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateContactAttributes - Arguments for method UpdateContactAttributes on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContactAttributes on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateContactAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContactAttributes.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $UpdateContactAttributesResponse = $connect->UpdateContactAttributes(
      Attributes => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },
      InitialContactId => 'MyContactId',
      InstanceId       => 'MyInstanceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateContactAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => Connect_Attributes

The Amazon Connect attributes. These attributes can be accessed in
contact flows just like any other contact attributes.

You can have up to 32,768 UTF-8 bytes across all attributes for a
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.



=head2 B<REQUIRED> InitialContactId => Str

The identifier of the contact. This is the identifier of the contact
associated with the first interaction with the contact center.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContactAttributes in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

