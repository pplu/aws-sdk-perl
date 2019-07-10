
package Paws::AppStream::CreateUsageReportSubscription;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUsageReportSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateUsageReportSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateUsageReportSubscription - Arguments for method CreateUsageReportSubscription on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUsageReportSubscription on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateUsageReportSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUsageReportSubscription.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateUsageReportSubscriptionResult =
      $appstream2->CreateUsageReportSubscription();

    # Results:
    my $S3BucketName = $CreateUsageReportSubscriptionResult->S3BucketName;
    my $Schedule     = $CreateUsageReportSubscriptionResult->Schedule;

    # Returns a L<Paws::AppStream::CreateUsageReportSubscriptionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateUsageReportSubscription>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUsageReportSubscription in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

