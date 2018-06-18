
package Paws::SNS::ListEndpointsByPlatformApplication;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformApplicationArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::ListEndpointsByPlatformApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListEndpointsByPlatformApplicationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListEndpointsByPlatformApplication - Arguments for method ListEndpointsByPlatformApplication on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEndpointsByPlatformApplication on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method ListEndpointsByPlatformApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEndpointsByPlatformApplication.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $ListEndpointsByPlatformApplicationResponse =
      $sns->ListEndpointsByPlatformApplication(
      PlatformApplicationArn => 'MyString',
      NextToken              => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Endpoints = $ListEndpointsByPlatformApplicationResponse->Endpoints;
    my $NextToken = $ListEndpointsByPlatformApplicationResponse->NextToken;

    # Returns a L<Paws::SNS::ListEndpointsByPlatformApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/ListEndpointsByPlatformApplication>

=head1 ATTRIBUTES


=head2 NextToken => Str

NextToken string is used when calling
ListEndpointsByPlatformApplication action to retrieve additional
records that are available after the first page results.



=head2 B<REQUIRED> PlatformApplicationArn => Str

PlatformApplicationArn for ListEndpointsByPlatformApplicationInput
action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEndpointsByPlatformApplication in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

