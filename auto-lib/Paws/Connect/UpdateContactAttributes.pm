
package Paws::Connect::UpdateContactAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes', required => 1);
  has InitialContactId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContactAttributes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/attributes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::UpdateContactAttributesResponse');
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


=head2 B<REQUIRED> Attributes => L<Paws::Connect::Attributes>

Specify a custom key-value pair using an attribute map. The attributes
are standard Amazon Connect attributes, and can be accessed in contact
flows just like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.



=head2 B<REQUIRED> InitialContactId => Str

The unique identifier of the contact for which to update attributes.
This is the identifier for the contact associated with the first
interaction with the contact center.



=head2 B<REQUIRED> InstanceId => Str

The identifier for your Amazon Connect instance. To find the ID of your
instance, open the AWS console and select Amazon Connect. Select the
alias of the instance in the Instance alias column. The instance ID is
displayed in the Overview section of your instance settings. For
example, the instance ID is the set of characters at the end of the
instance ARN, after instance/, such as
10a4c4eb-f57e-4d4c-b602-bf39176ced07.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContactAttributes in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

