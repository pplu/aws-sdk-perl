package Paws::RedShift::ScheduledActionType;
  use Moose;
  has ResizeCluster => (is => 'ro', isa => 'Paws::RedShift::ResizeClusterMessage');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ScheduledActionType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ScheduledActionType object:

  $service_obj->Method(Att1 => { ResizeCluster => $value, ..., ResizeCluster => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ScheduledActionType object:

  $result = $service_obj->Method(...);
  $result->Att1->ResizeCluster

=head1 DESCRIPTION

The action type that specifies an Amazon Redshift API operation that is
supported by the Amazon Redshift scheduler.

=head1 ATTRIBUTES


=head2 ResizeCluster => L<Paws::RedShift::ResizeClusterMessage>

  An action that runs a C<ResizeCluster> API operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

