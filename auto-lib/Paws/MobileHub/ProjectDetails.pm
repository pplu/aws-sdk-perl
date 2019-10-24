# Generated from default/object.tt
package Paws::MobileHub::ProjectDetails;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MobileHub::Types qw/MobileHub_Resource/;
  has ConsoleUrl => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has LastUpdatedDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ProjectId => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has Resources => (is => 'ro', isa => ArrayRef[MobileHub_Resource]);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'State' => {
                            'type' => 'Str'
                          },
               'ConsoleUrl' => {
                                 'type' => 'Str'
                               },
               'LastUpdatedDate' => {
                                      'type' => 'Str'
                                    },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'Resources' => {
                                'class' => 'Paws::MobileHub::Resource',
                                'type' => 'ArrayRef[MobileHub_Resource]'
                              },
               'ProjectId' => {
                                'type' => 'Str'
                              },
               'Name' => {
                           'type' => 'Str'
                         },
               'Region' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'State' => 'state',
                       'ConsoleUrl' => 'consoleUrl',
                       'LastUpdatedDate' => 'lastUpdatedDate',
                       'CreatedDate' => 'createdDate',
                       'Resources' => 'resources',
                       'ProjectId' => 'projectId',
                       'Name' => 'name',
                       'Region' => 'region'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::ProjectDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MobileHub::ProjectDetails object:

  $service_obj->Method(Att1 => { ConsoleUrl => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MobileHub::ProjectDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ConsoleUrl

=head1 DESCRIPTION

Detailed information about an AWS Mobile Hub project.

=head1 ATTRIBUTES


=head2 ConsoleUrl => Str

  Website URL for this project in the AWS Mobile Hub console.


=head2 CreatedDate => Str

  Date the project was created.


=head2 LastUpdatedDate => Str

  Date of the last modification of the project.


=head2 Name => Str

  


=head2 ProjectId => Str

  


=head2 Region => Str

  


=head2 Resources => ArrayRef[MobileHub_Resource]

  


=head2 State => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

