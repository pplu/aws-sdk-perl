package Paws::AppStream::UsageReportSubscription;
  use Moose;
  has LastGeneratedReportDate => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');
  has SubscriptionErrors => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::LastReportGenerationExecutionError]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UsageReportSubscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::UsageReportSubscription object:

  $service_obj->Method(Att1 => { LastGeneratedReportDate => $value, ..., SubscriptionErrors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::UsageReportSubscription object:

  $result = $service_obj->Method(...);
  $result->Att1->LastGeneratedReportDate

=head1 DESCRIPTION

Describes information about the usage report subscription.

=head1 ATTRIBUTES


=head2 LastGeneratedReportDate => Str

  The time when the last usage report was generated.


=head2 S3BucketName => Str

  The Amazon S3 bucket where generated reports are stored. When a usage
report subscription is enabled for the first time for an account in an
AWS Region, an S3 bucket is created. The bucket is unique to the AWS
account and the Region.


=head2 Schedule => Str

  The schedule for generating usage reports.


=head2 SubscriptionErrors => ArrayRef[L<Paws::AppStream::LastReportGenerationExecutionError>]

  The errors that are returned when usage reports can't be generated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

