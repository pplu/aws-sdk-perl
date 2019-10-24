# Generated from default/object.tt
package Paws::IoT1ClickProjects::ProjectSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_TagMap/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str, required => 1);
  has ProjectName => (is => 'ro', isa => Str, required => 1);
  has Tags => (is => 'ro', isa => IoT1ClickProjects_TagMap);
  has UpdatedDate => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'UpdatedDate' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::IoT1ClickProjects::TagMap',
                           'type' => 'IoT1ClickProjects_TagMap'
                         },
               'ProjectName' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'CreatedDate' => 'createdDate',
                       'UpdatedDate' => 'updatedDate',
                       'Arn' => 'arn',
                       'Tags' => 'tags',
                       'ProjectName' => 'projectName'
                     },
  'IsRequired' => {
                    'CreatedDate' => 1,
                    'UpdatedDate' => 1,
                    'ProjectName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::ProjectSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickProjects::ProjectSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UpdatedDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickProjects::ProjectSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object providing summary information for a particular project for an
associated AWS account and region.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the project.


=head2 B<REQUIRED> CreatedDate => Str

  The date when the project was originally created, in UNIX epoch time
format.


=head2 B<REQUIRED> ProjectName => Str

  The name of the project being summarized.


=head2 Tags => IoT1ClickProjects_TagMap

  The tags (metadata key/value pairs) associated with the project.


=head2 B<REQUIRED> UpdatedDate => Str

  The date when the project was last updated, in UNIX epoch time format.
If the project was not updated, then C<createdDate> and C<updatedDate>
are the same.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

