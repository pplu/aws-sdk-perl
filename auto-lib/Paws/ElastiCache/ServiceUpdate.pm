package Paws::ElastiCache::ServiceUpdate;
  use Moose;
  has AutoUpdateAfterRecommendedApplyByDate => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has EstimatedUpdateTime => (is => 'ro', isa => 'Str');
  has ServiceUpdateDescription => (is => 'ro', isa => 'Str');
  has ServiceUpdateEndDate => (is => 'ro', isa => 'Str');
  has ServiceUpdateName => (is => 'ro', isa => 'Str');
  has ServiceUpdateRecommendedApplyByDate => (is => 'ro', isa => 'Str');
  has ServiceUpdateReleaseDate => (is => 'ro', isa => 'Str');
  has ServiceUpdateSeverity => (is => 'ro', isa => 'Str');
  has ServiceUpdateStatus => (is => 'ro', isa => 'Str');
  has ServiceUpdateType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ServiceUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::ServiceUpdate object:

  $service_obj->Method(Att1 => { AutoUpdateAfterRecommendedApplyByDate => $value, ..., ServiceUpdateType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ServiceUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoUpdateAfterRecommendedApplyByDate

=head1 DESCRIPTION

An update that you can apply to your Redis clusters.

=head1 ATTRIBUTES


=head2 AutoUpdateAfterRecommendedApplyByDate => Bool

  Indicates whether the service update will be automatically applied once
the recommended apply-by date has expired.


=head2 Engine => Str

  The Elasticache engine to which the update applies. Either Redis or
Memcached


=head2 EngineVersion => Str

  The Elasticache engine version to which the update applies. Either
Redis or Memcached engine version


=head2 EstimatedUpdateTime => Str

  The estimated length of time the service update will take


=head2 ServiceUpdateDescription => Str

  Provides details of the service update


=head2 ServiceUpdateEndDate => Str

  The date after which the service update is no longer available


=head2 ServiceUpdateName => Str

  The unique ID of the service update


=head2 ServiceUpdateRecommendedApplyByDate => Str

  The recommendend date to apply the service update in order to ensure
compliance. For information on compliance, see Self-Service Security
Updates for Compliance
(https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/elasticache-compliance.html#elasticache-compliance-self-service).


=head2 ServiceUpdateReleaseDate => Str

  The date when the service update is initially available


=head2 ServiceUpdateSeverity => Str

  The severity of the service update


=head2 ServiceUpdateStatus => Str

  The status of the service update


=head2 ServiceUpdateType => Str

  Reflects the nature of the service update



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

