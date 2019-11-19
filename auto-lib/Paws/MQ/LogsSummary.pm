# Generated from default/object.tt
package Paws::MQ::LogsSummary;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::MQ::Types qw/MQ_PendingLogs/;
  has Audit => (is => 'ro', isa => Bool);
  has AuditLogGroup => (is => 'ro', isa => Str);
  has General => (is => 'ro', isa => Bool);
  has GeneralLogGroup => (is => 'ro', isa => Str);
  has Pending => (is => 'ro', isa => MQ_PendingLogs);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Pending' => 'pending',
                       'AuditLogGroup' => 'auditLogGroup',
                       'Audit' => 'audit',
                       'GeneralLogGroup' => 'generalLogGroup',
                       'General' => 'general'
                     },
  'types' => {
               'Audit' => {
                            'type' => 'Bool'
                          },
               'AuditLogGroup' => {
                                    'type' => 'Str'
                                  },
               'Pending' => {
                              'class' => 'Paws::MQ::PendingLogs',
                              'type' => 'MQ_PendingLogs'
                            },
               'General' => {
                              'type' => 'Bool'
                            },
               'GeneralLogGroup' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::LogsSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::LogsSummary object:

  $service_obj->Method(Att1 => { Audit => $value, ..., Pending => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::LogsSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Audit

=head1 DESCRIPTION

The list of information about logs currently enabled and pending to be
deployed for the specified broker.

=head1 ATTRIBUTES


=head2 Audit => Bool

  Enables audit logging. Every user management action made using JMX or
the ActiveMQ Web Console is logged.


=head2 AuditLogGroup => Str

  The location of the CloudWatch Logs log group where audit logs are
sent.


=head2 General => Bool

  Enables general logging.


=head2 GeneralLogGroup => Str

  The location of the CloudWatch Logs log group where general logs are
sent.


=head2 Pending => MQ_PendingLogs

  The list of information about logs pending to be deployed for the
specified broker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

