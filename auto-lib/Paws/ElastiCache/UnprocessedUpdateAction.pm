package Paws::ElastiCache::UnprocessedUpdateAction;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has ErrorType => (is => 'ro', isa => 'Str');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has ServiceUpdateName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::UnprocessedUpdateAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::UnprocessedUpdateAction object:

  $service_obj->Method(Att1 => { ErrorMessage => $value, ..., ServiceUpdateName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::UnprocessedUpdateAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorMessage

=head1 DESCRIPTION

Update action that has failed to be processed for the corresponding
apply/stop request

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

  The error message that describes the reason the request was not
processed


=head2 ErrorType => Str

  The error type for requests that are not processed


=head2 ReplicationGroupId => Str

  The replication group ID


=head2 ServiceUpdateName => Str

  The unique ID of the service update



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

