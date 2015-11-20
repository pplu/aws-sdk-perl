package Paws::Config::SourceDetail;
  use Moose;
  has EventSource => (is => 'ro', isa => 'Str');
  has MessageType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::SourceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::SourceDetail object:

  $service_obj->Method(Att1 => { EventSource => $value, ..., MessageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::SourceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->EventSource

=head1 DESCRIPTION

Provides the source and type of the event that triggers AWS Config to
evaluate your AWS resources against a rule.

=head1 ATTRIBUTES


=head2 EventSource => Str

  The source of the event, such as an AWS service, that triggers AWS
Config to evaluate your AWS resources.


=head2 MessageType => Str

  The type of SNS message that triggers AWS Config to run an evaluation.
For evaluations that are initiated when AWS Config delivers a
configuration item change notification, you must use
C<ConfigurationItemChangeNotification>. For evaluations that are
initiated when AWS Config delivers a configuration snapshot, you must
use C<ConfigurationSnapshotDeliveryCompleted>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

