
package Paws::SESv2::DeleteContactList;
  use Moose;
  has ContactListName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactListName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteContactList');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/contact-lists/{ContactListName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::DeleteContactListResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::DeleteContactList - Arguments for method DeleteContactList on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteContactList on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method DeleteContactList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteContactList.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $DeleteContactListResponse = $email->DeleteContactList(
      ContactListName => 'MyContactListName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DeleteContactList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactListName => Str

The name of the contact list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteContactList in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

