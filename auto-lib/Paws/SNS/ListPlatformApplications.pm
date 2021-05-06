
package Paws::SNS::ListPlatformApplications;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlatformApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::ListPlatformApplicationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPlatformApplicationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListPlatformApplications - Arguments for method ListPlatformApplications on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPlatformApplications on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method ListPlatformApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPlatformApplications.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $ListPlatformApplicationsResponse = $sns->ListPlatformApplications(
      NextToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPlatformApplicationsResponse->NextToken;
    my $PlatformApplications =
      $ListPlatformApplicationsResponse->PlatformApplications;

    # Returns a L<Paws::SNS::ListPlatformApplicationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/ListPlatformApplications>

=head1 ATTRIBUTES


=head2 NextToken => Str

NextToken string is used when calling ListPlatformApplications action
to retrieve additional records that are available after the first page
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPlatformApplications in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

