# Generated from default/object.tt
package Paws::DynamoDB::BackupDescription;
  use Moo;
  use Types::Standard qw//;
  use Paws::DynamoDB::Types qw/DynamoDB_SourceTableFeatureDetails DynamoDB_SourceTableDetails DynamoDB_BackupDetails/;
  has BackupDetails => (is => 'ro', isa => DynamoDB_BackupDetails);
  has SourceTableDetails => (is => 'ro', isa => DynamoDB_SourceTableDetails);
  has SourceTableFeatureDetails => (is => 'ro', isa => DynamoDB_SourceTableFeatureDetails);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BackupDetails' => {
                                    'class' => 'Paws::DynamoDB::BackupDetails',
                                    'type' => 'DynamoDB_BackupDetails'
                                  },
               'SourceTableDetails' => {
                                         'type' => 'DynamoDB_SourceTableDetails',
                                         'class' => 'Paws::DynamoDB::SourceTableDetails'
                                       },
               'SourceTableFeatureDetails' => {
                                                'type' => 'DynamoDB_SourceTableFeatureDetails',
                                                'class' => 'Paws::DynamoDB::SourceTableFeatureDetails'
                                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BackupDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::BackupDescription object:

  $service_obj->Method(Att1 => { BackupDetails => $value, ..., SourceTableFeatureDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::BackupDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupDetails

=head1 DESCRIPTION

Contains the description of the backup created for the table.

=head1 ATTRIBUTES


=head2 BackupDetails => DynamoDB_BackupDetails

  Contains the details of the backup created for the table.


=head2 SourceTableDetails => DynamoDB_SourceTableDetails

  Contains the details of the table when the backup was created.


=head2 SourceTableFeatureDetails => DynamoDB_SourceTableFeatureDetails

  Contains the details of the features enabled on the table when the
backup was created. For example, LSIs, GSIs, streams, TTL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

