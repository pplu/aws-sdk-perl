package Paws::CloudWatchEvents::RemoveTargetsResultEntry;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has TargetId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::RemoveTargetsResultEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::RemoveTargetsResultEntry object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., TargetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::RemoveTargetsResultEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

The ID of the target requested to be removed from the rule by Amazon
CloudWatch Events.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code representing why the target removal failed on this
entry.


=head2 ErrorMessage => Str

  The error message explaining why the target removal failed on this
entry.


=head2 TargetId => Str

  The ID of the target requested to be removed by Amazon CloudWatch
Events.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

