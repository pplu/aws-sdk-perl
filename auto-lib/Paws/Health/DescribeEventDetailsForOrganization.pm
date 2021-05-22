
package Paws::Health::DescribeEventDetailsForOrganization;
  use Moose;
  has Locale => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'locale' );
  has OrganizationEventDetailFilters => (is => 'ro', isa => 'ArrayRef[Paws::Health::EventAccountFilter]', traits => ['NameInRequest'], request_name => 'organizationEventDetailFilters' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventDetailsForOrganization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Health::DescribeEventDetailsForOrganizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventDetailsForOrganization - Arguments for method DescribeEventDetailsForOrganization on L<Paws::Health>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventDetailsForOrganization on the
L<AWS Health APIs and Notifications|Paws::Health> service. Use the attributes of this class
as arguments to method DescribeEventDetailsForOrganization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventDetailsForOrganization.

=head1 SYNOPSIS

    my $health = Paws->service('Health');
    my $DescribeEventDetailsForOrganizationResponse =
      $health->DescribeEventDetailsForOrganization(
      OrganizationEventDetailFilters => [
        {
          EventArn     => 'MyeventArn',     # max: 1600
          AwsAccountId => 'MyaccountId',    # max: 12; OPTIONAL
        },
        ...
      ],
      Locale => 'Mylocale',                 # OPTIONAL
      );

    # Results:
    my $FailedSet = $DescribeEventDetailsForOrganizationResponse->FailedSet;
    my $SuccessfulSet =
      $DescribeEventDetailsForOrganizationResponse->SuccessfulSet;

# Returns a L<Paws::Health::DescribeEventDetailsForOrganizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health/DescribeEventDetailsForOrganization>

=head1 ATTRIBUTES


=head2 Locale => Str

The locale (language) to return information in. English (en) is the
default and the only supported value at this time.



=head2 B<REQUIRED> OrganizationEventDetailFilters => ArrayRef[L<Paws::Health::EventAccountFilter>]

A set of JSON elements that includes the C<awsAccountId> and the
C<eventArn>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventDetailsForOrganization in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

