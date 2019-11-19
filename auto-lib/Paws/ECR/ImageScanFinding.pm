# Generated from default/object.tt
package Paws::ECR::ImageScanFinding;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::ECR::Types qw/ECR_Attribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[ECR_Attribute]);
  has Description => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Severity => (is => 'ro', isa => Str);
  has Uri => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Uri' => 'uri',
                       'Name' => 'name',
                       'Severity' => 'severity',
                       'Attributes' => 'attributes',
                       'Description' => 'description'
                     },
  'types' => {
               'Uri' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'Severity' => {
                               'type' => 'Str'
                             },
               'Attributes' => {
                                 'class' => 'Paws::ECR::Attribute',
                                 'type' => 'ArrayRef[ECR_Attribute]'
                               },
               'Description' => {
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

Paws::ECR::ImageScanFinding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::ImageScanFinding object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::ImageScanFinding object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Contains information about an image scan finding.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[ECR_Attribute]

  A collection of attributes of the host from which the finding is
generated.


=head2 Description => Str

  The description of the finding.


=head2 Name => Str

  The name associated with the finding, usually a CVE number.


=head2 Severity => Str

  The finding severity.


=head2 Uri => Str

  A link containing additional details about the security vulnerability.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

