package Paws::MQ::PendingLogs;
  use Moose;
  has Audit => (is => 'ro', isa => 'Bool', request_name => 'audit', traits => ['NameInRequest']);
  has General => (is => 'ro', isa => 'Bool', request_name => 'general', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::PendingLogs

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::PendingLogs object:

  $service_obj->Method(Att1 => { Audit => $value, ..., General => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::PendingLogs object:

  $result = $service_obj->Method(...);
  $result->Att1->Audit

=head1 DESCRIPTION

The list of information about logs to be enabled for the specified
broker.

=head1 ATTRIBUTES


=head2 Audit => Bool

  Enables audit logging. Every user management action made using JMX or
the ActiveMQ Web Console is logged.


=head2 General => Bool

  Enables general logging.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

