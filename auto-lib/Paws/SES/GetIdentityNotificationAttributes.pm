
package Paws::SES::GetIdentityNotificationAttributes;
  use Moose;
  has Identities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::GetIdentityNotificationAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetIdentityNotificationAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityNotificationAttributes - Arguments for method GetIdentityNotificationAttributes on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIdentityNotificationAttributes on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method GetIdentityNotificationAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIdentityNotificationAttributes.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # GetIdentityNotificationAttributes
    # The following example returns the notification attributes for an identity:
    my $GetIdentityNotificationAttributesResponse =
      $email->GetIdentityNotificationAttributes(
      {
        'Identities' => ['example.com']
      }
      );

    # Results:
    my $NotificationAttributes =
      $GetIdentityNotificationAttributesResponse->NotificationAttributes;

    # Returns a L<Paws::SES::GetIdentityNotificationAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetIdentityNotificationAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identities => ArrayRef[Str|Undef]

A list of one or more identities. You can specify an identity by using
its name or by using its Amazon Resource Name (ARN). Examples:
C<user@example.com>, C<example.com>,
C<arn:aws:ses:us-east-1:123456789012:identity/example.com>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIdentityNotificationAttributes in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

