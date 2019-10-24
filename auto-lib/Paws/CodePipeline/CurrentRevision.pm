# Generated from default/object.tt
package Paws::CodePipeline::CurrentRevision;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has ChangeIdentifier => (is => 'ro', isa => Str, required => 1);
  has Created => (is => 'ro', isa => Str);
  has Revision => (is => 'ro', isa => Str, required => 1);
  has RevisionSummary => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RevisionSummary' => {
                                      'type' => 'Str'
                                    },
               'Revision' => {
                               'type' => 'Str'
                             },
               'ChangeIdentifier' => {
                                       'type' => 'Str'
                                     },
               'Created' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'RevisionSummary' => 'revisionSummary',
                       'Revision' => 'revision',
                       'ChangeIdentifier' => 'changeIdentifier',
                       'Created' => 'created'
                     },
  'IsRequired' => {
                    'Revision' => 1,
                    'ChangeIdentifier' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::CurrentRevision

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::CurrentRevision object:

  $service_obj->Method(Att1 => { ChangeIdentifier => $value, ..., RevisionSummary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::CurrentRevision object:

  $result = $service_obj->Method(...);
  $result->Att1->ChangeIdentifier

=head1 DESCRIPTION

Represents information about a current revision.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeIdentifier => Str

  The change identifier for the current revision.


=head2 Created => Str

  The date and time when the most recent revision of the artifact was
created, in timestamp format.


=head2 B<REQUIRED> Revision => Str

  The revision ID of the current version of an artifact.


=head2 RevisionSummary => Str

  The summary of the most recent revision of the artifact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

