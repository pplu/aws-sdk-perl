# Generated from default/object.tt
package Paws::CUR::ReportDefinition;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str Bool/;
  use Paws::CUR::Types qw//;
  has AdditionalArtifacts => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has AdditionalSchemaElements => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has Compression => (is => 'ro', isa => Str, required => 1);
  has Format => (is => 'ro', isa => Str, required => 1);
  has RefreshClosedReports => (is => 'ro', isa => Bool);
  has ReportName => (is => 'ro', isa => Str, required => 1);
  has ReportVersioning => (is => 'ro', isa => Str);
  has S3Bucket => (is => 'ro', isa => Str, required => 1);
  has S3Prefix => (is => 'ro', isa => Str, required => 1);
  has S3Region => (is => 'ro', isa => Str, required => 1);
  has TimeUnit => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3Prefix' => {
                               'type' => 'Str'
                             },
               'RefreshClosedReports' => {
                                           'type' => 'Bool'
                                         },
               'S3Bucket' => {
                               'type' => 'Str'
                             },
               'S3Region' => {
                               'type' => 'Str'
                             },
               'TimeUnit' => {
                               'type' => 'Str'
                             },
               'Format' => {
                             'type' => 'Str'
                           },
               'AdditionalArtifacts' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'ReportName' => {
                                 'type' => 'Str'
                               },
               'AdditionalSchemaElements' => {
                                               'type' => 'ArrayRef[Str|Undef]'
                                             },
               'Compression' => {
                                  'type' => 'Str'
                                },
               'ReportVersioning' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'S3Prefix' => 1,
                    'S3Bucket' => 1,
                    'S3Region' => 1,
                    'TimeUnit' => 1,
                    'Format' => 1,
                    'ReportName' => 1,
                    'AdditionalSchemaElements' => 1,
                    'Compression' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CUR::ReportDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CUR::ReportDefinition object:

  $service_obj->Method(Att1 => { AdditionalArtifacts => $value, ..., TimeUnit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CUR::ReportDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalArtifacts

=head1 DESCRIPTION

The definition of AWS Cost and Usage Report. You can specify the report
name, time unit, report format, compression format, S3 bucket,
additional artifacts, and schema elements in the definition.

=head1 ATTRIBUTES


=head2 AdditionalArtifacts => ArrayRef[Str|Undef]

  A list of manifests that you want Amazon Web Services to create for
this report.


=head2 B<REQUIRED> AdditionalSchemaElements => ArrayRef[Str|Undef]

  A list of strings that indicate additional content that Amazon Web
Services includes in the report, such as individual resource IDs.


=head2 B<REQUIRED> Compression => Str

  


=head2 B<REQUIRED> Format => Str

  


=head2 RefreshClosedReports => Bool

  Whether you want Amazon Web Services to update your reports after they
have been finalized if Amazon Web Services detects charges related to
previous months. These charges can include refunds, credits, or support
fees.


=head2 B<REQUIRED> ReportName => Str

  


=head2 ReportVersioning => Str

  Whether you want Amazon Web Services to overwrite the previous version
of each report or to deliver the report in addition to the previous
versions.


=head2 B<REQUIRED> S3Bucket => Str

  


=head2 B<REQUIRED> S3Prefix => Str

  


=head2 B<REQUIRED> S3Region => Str

  


=head2 B<REQUIRED> TimeUnit => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CUR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

