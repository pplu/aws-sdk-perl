
package Paws::CloudFormation::DescribePublisher;
  use Moose;
  has PublisherId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePublisher');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribePublisherOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePublisherResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribePublisher - Arguments for method DescribePublisher on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePublisher on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribePublisher.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePublisher.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribePublisherOutput = $cloudformation->DescribePublisher(
      PublisherId => 'MyPublisherId',    # OPTIONAL
    );

    # Results:
    my $IdentityProvider = $DescribePublisherOutput->IdentityProvider;
    my $PublisherId      = $DescribePublisherOutput->PublisherId;
    my $PublisherProfile = $DescribePublisherOutput->PublisherProfile;
    my $PublisherStatus  = $DescribePublisherOutput->PublisherStatus;

    # Returns a L<Paws::CloudFormation::DescribePublisherOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribePublisher>

=head1 ATTRIBUTES


=head2 PublisherId => Str

The ID of the extension publisher.

If you do not supply a C<PublisherId>, and you have registered as an
extension publisher, C<DescribePublisher> returns information about
your own publisher account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePublisher in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

