# Generated from default/object.tt
package Paws::ECR::ImageScanFindings;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::ECR::Types qw/ECR_ImageScanFinding ECR_FindingSeverityCounts/;
  has Findings => (is => 'ro', isa => ArrayRef[ECR_ImageScanFinding]);
  has FindingSeverityCounts => (is => 'ro', isa => ECR_FindingSeverityCounts);
  has ImageScanCompletedAt => (is => 'ro', isa => Str);
  has VulnerabilitySourceUpdatedAt => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VulnerabilitySourceUpdatedAt' => {
                                                   'type' => 'Str'
                                                 },
               'ImageScanCompletedAt' => {
                                           'type' => 'Str'
                                         },
               'Findings' => {
                               'type' => 'ArrayRef[ECR_ImageScanFinding]',
                               'class' => 'Paws::ECR::ImageScanFinding'
                             },
               'FindingSeverityCounts' => {
                                            'class' => 'Paws::ECR::FindingSeverityCounts',
                                            'type' => 'ECR_FindingSeverityCounts'
                                          }
             },
  'NameInRequest' => {
                       'ImageScanCompletedAt' => 'imageScanCompletedAt',
                       'VulnerabilitySourceUpdatedAt' => 'vulnerabilitySourceUpdatedAt',
                       'FindingSeverityCounts' => 'findingSeverityCounts',
                       'Findings' => 'findings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ImageScanFindings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::ImageScanFindings object:

  $service_obj->Method(Att1 => { Findings => $value, ..., VulnerabilitySourceUpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::ImageScanFindings object:

  $result = $service_obj->Method(...);
  $result->Att1->Findings

=head1 DESCRIPTION

The details of an image scan.

=head1 ATTRIBUTES


=head2 Findings => ArrayRef[ECR_ImageScanFinding]

  The findings from the image scan.


=head2 FindingSeverityCounts => ECR_FindingSeverityCounts

  The image vulnerability counts, sorted by severity.


=head2 ImageScanCompletedAt => Str

  The time of the last completed image scan.


=head2 VulnerabilitySourceUpdatedAt => Str

  The time when the vulnerability data was last scanned.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

