# Generated from default/object.tt
package Paws::Lightsail::PendingModifiedRelationalDatabaseValues;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::Lightsail::Types qw//;
  has BackupRetentionEnabled => (is => 'ro', isa => Bool);
  has EngineVersion => (is => 'ro', isa => Str);
  has MasterUserPassword => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MasterUserPassword' => {
                                         'type' => 'Str'
                                       },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'BackupRetentionEnabled' => {
                                             'type' => 'Bool'
                                           }
             },
  'NameInRequest' => {
                       'MasterUserPassword' => 'masterUserPassword',
                       'EngineVersion' => 'engineVersion',
                       'BackupRetentionEnabled' => 'backupRetentionEnabled'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::PendingModifiedRelationalDatabaseValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::PendingModifiedRelationalDatabaseValues object:

  $service_obj->Method(Att1 => { BackupRetentionEnabled => $value, ..., MasterUserPassword => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::PendingModifiedRelationalDatabaseValues object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupRetentionEnabled

=head1 DESCRIPTION

Describes a pending database value modification.

=head1 ATTRIBUTES


=head2 BackupRetentionEnabled => Bool

  A Boolean value indicating whether automated backup retention is
enabled.


=head2 EngineVersion => Str

  The database engine version.


=head2 MasterUserPassword => Str

  The password for the master user of the database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

