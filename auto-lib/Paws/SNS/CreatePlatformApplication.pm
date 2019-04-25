
package Paws::SNS::CreatePlatformApplication;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::MapStringToString', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Platform => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::CreatePlatformApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformApplicationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreatePlatformApplication - Arguments for method CreatePlatformApplication on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlatformApplication on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method CreatePlatformApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlatformApplication.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $CreatePlatformApplicationResponse = $sns->CreatePlatformApplication(
      Attributes => { 'MyString' => 'MyString', },
      Name       => 'MyString',
      Platform   => 'MyString',

    );

    # Results:
    my $PlatformApplicationArn =
      $CreatePlatformApplicationResponse->PlatformApplicationArn;

    # Returns a L<Paws::SNS::CreatePlatformApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/CreatePlatformApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::SNS::MapStringToString>

For a list of attributes, see SetPlatformApplicationAttributes
(http://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html)



=head2 B<REQUIRED> Name => Str

Application names must be made up of only uppercase and lowercase ASCII
letters, numbers, underscores, hyphens, and periods, and must be
between 1 and 256 characters long.



=head2 B<REQUIRED> Platform => Str

The following platforms are supported: ADM (Amazon Device Messaging),
APNS (Apple Push Notification Service), APNS_SANDBOX, and GCM (Google
Cloud Messaging).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlatformApplication in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

