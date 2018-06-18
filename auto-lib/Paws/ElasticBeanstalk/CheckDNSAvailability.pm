
package Paws::ElasticBeanstalk::CheckDNSAvailability;
  use Moose;
  has CNAMEPrefix => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::CheckDNSAvailabilityResultMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CheckDNSAvailabilityResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::CheckDNSAvailability - Arguments for method CheckDNSAvailability on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckDNSAvailability on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method CheckDNSAvailability.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckDNSAvailability.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To check the availability of a CNAME
    # The following operation checks the availability of the subdomain my-cname:
    my $CheckDNSAvailabilityResultMessage =
      $elasticbeanstalk->CheckDNSAvailability(
      {
        'CNAMEPrefix' => 'my-cname'
      }
      );

    # Results:
    my $Available = $CheckDNSAvailabilityResultMessage->Available;
    my $FullyQualifiedCNAME =
      $CheckDNSAvailabilityResultMessage->FullyQualifiedCNAME;

# Returns a L<Paws::ElasticBeanstalk::CheckDNSAvailabilityResultMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/CheckDNSAvailability>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CNAMEPrefix => Str

The prefix used when this CNAME is reserved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckDNSAvailability in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

