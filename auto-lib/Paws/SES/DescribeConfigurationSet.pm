
package Paws::SES::DescribeConfigurationSet;
  use Moose;
  has ConfigurationSetAttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ConfigurationSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::DescribeConfigurationSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeConfigurationSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeConfigurationSet - Arguments for method DescribeConfigurationSet on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeConfigurationSet on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method DescribeConfigurationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeConfigurationSet.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    my $DescribeConfigurationSetResponse = $email->DescribeConfigurationSet(
      ConfigurationSetName           => 'MyConfigurationSetName',
      ConfigurationSetAttributeNames => [
        'eventDestinations',
        ...    # values: eventDestinations, trackingOptions, reputationOptions
      ],       # OPTIONAL
    );

    # Results:
    my $ConfigurationSet = $DescribeConfigurationSetResponse->ConfigurationSet;
    my $EventDestinations =
      $DescribeConfigurationSetResponse->EventDestinations;
    my $ReputationOptions =
      $DescribeConfigurationSetResponse->ReputationOptions;
    my $TrackingOptions = $DescribeConfigurationSetResponse->TrackingOptions;

    # Returns a L<Paws::SES::DescribeConfigurationSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/DescribeConfigurationSet>

=head1 ATTRIBUTES


=head2 ConfigurationSetAttributeNames => ArrayRef[Str|Undef]

A list of configuration set attributes to return.



=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeConfigurationSet in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

