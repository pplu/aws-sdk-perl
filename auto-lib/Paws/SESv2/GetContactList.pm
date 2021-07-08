
package Paws::SESv2::GetContactList;
  use Moose;
  has ContactListName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactListName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContactList');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/contact-lists/{ContactListName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::GetContactListResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetContactList - Arguments for method GetContactList on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContactList on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetContactList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContactList.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetContactListResponse = $email->GetContactList(
      ContactListName => 'MyContactListName',

    );

    # Results:
    my $ContactListName      = $GetContactListResponse->ContactListName;
    my $CreatedTimestamp     = $GetContactListResponse->CreatedTimestamp;
    my $Description          = $GetContactListResponse->Description;
    my $LastUpdatedTimestamp = $GetContactListResponse->LastUpdatedTimestamp;
    my $Tags                 = $GetContactListResponse->Tags;
    my $Topics               = $GetContactListResponse->Topics;

    # Returns a L<Paws::SESv2::GetContactListResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetContactList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactListName => Str

The name of the contact list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContactList in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

