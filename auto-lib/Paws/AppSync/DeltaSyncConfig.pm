package Paws::AppSync::DeltaSyncConfig;
  use Moose;
  has BaseTableTTL => (is => 'ro', isa => 'Int', request_name => 'baseTableTTL', traits => ['NameInRequest']);
  has DeltaSyncTableName => (is => 'ro', isa => 'Str', request_name => 'deltaSyncTableName', traits => ['NameInRequest']);
  has DeltaSyncTableTTL => (is => 'ro', isa => 'Int', request_name => 'deltaSyncTableTTL', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::DeltaSyncConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::DeltaSyncConfig object:

  $service_obj->Method(Att1 => { BaseTableTTL => $value, ..., DeltaSyncTableTTL => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::DeltaSyncConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->BaseTableTTL

=head1 DESCRIPTION

Describes a Delta Sync configuration.

=head1 ATTRIBUTES


=head2 BaseTableTTL => Int

  The number of minutes an Item is stored in the datasource.


=head2 DeltaSyncTableName => Str

  The Delta Sync table name.


=head2 DeltaSyncTableTTL => Int

  The number of minutes a Delta Sync log entry is stored in the Delta
Sync table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

