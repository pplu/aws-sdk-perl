# Generated from default/object.tt
package Paws::SMS::Server;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SMS::Types qw/SMS_VmServer/;
  has ReplicationJobId => (is => 'ro', isa => Str);
  has ReplicationJobTerminated => (is => 'ro', isa => Bool);
  has ServerId => (is => 'ro', isa => Str);
  has ServerType => (is => 'ro', isa => Str);
  has VmServer => (is => 'ro', isa => SMS_VmServer);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VmServer' => 'vmServer',
                       'ReplicationJobTerminated' => 'replicationJobTerminated',
                       'ServerType' => 'serverType',
                       'ReplicationJobId' => 'replicationJobId',
                       'ServerId' => 'serverId'
                     },
  'types' => {
               'VmServer' => {
                               'class' => 'Paws::SMS::VmServer',
                               'type' => 'SMS_VmServer'
                             },
               'ReplicationJobTerminated' => {
                                               'type' => 'Bool'
                                             },
               'ReplicationJobId' => {
                                       'type' => 'Str'
                                     },
               'ServerType' => {
                                 'type' => 'Str'
                               },
               'ServerId' => {
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

Paws::SMS::Server

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::Server object:

  $service_obj->Method(Att1 => { ReplicationJobId => $value, ..., VmServer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::Server object:

  $result = $service_obj->Method(...);
  $result->Att1->ReplicationJobId

=head1 DESCRIPTION

Represents a server.

=head1 ATTRIBUTES


=head2 ReplicationJobId => Str

  The identifier of the replication job.


=head2 ReplicationJobTerminated => Bool

  Indicates whether the replication job is deleted or failed.


=head2 ServerId => Str

  The identifier of the server.


=head2 ServerType => Str

  The type of server.


=head2 VmServer => SMS_VmServer

  Information about the VM server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

