
package Paws::Signer::StartSigningJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw/Signer_Source Signer_Destination/;
  has ClientRequestToken => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Destination => (is => 'ro', isa => Signer_Destination, required => 1, predicate => 1);
  has ProfileName => (is => 'ro', isa => Str, predicate => 1);
  has Source => (is => 'ro', isa => Signer_Source, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartSigningJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/signing-jobs');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Signer::StartSigningJobResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProfileName' => {
                                  'type' => 'Str'
                                },
               'Destination' => {
                                  'class' => 'Paws::Signer::Destination',
                                  'type' => 'Signer_Destination'
                                },
               'Source' => {
                             'class' => 'Paws::Signer::Source',
                             'type' => 'Signer_Source'
                           },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'ClientRequestToken' => 'clientRequestToken',
                       'Source' => 'source',
                       'Destination' => 'destination',
                       'ProfileName' => 'profileName'
                     },
  'IsRequired' => {
                    'ClientRequestToken' => 1,
                    'Source' => 1,
                    'Destination' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::StartSigningJob - Arguments for method StartSigningJob on L<Paws::Signer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSigningJob on the
L<AWS Signer|Paws::Signer> service. Use the attributes of this class
as arguments to method StartSigningJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSigningJob.

=head1 SYNOPSIS

    my $signer = Paws->service('Signer');
    my $StartSigningJobResponse = $signer->StartSigningJob(
      ClientRequestToken => 'MyClientRequestToken',
      Destination        => {
        S3 => {
          BucketName => 'MyBucketName',    # OPTIONAL
          Prefix     => 'MyPrefix',        # OPTIONAL
        },    # OPTIONAL
      },
      Source => {
        S3 => {
          BucketName => 'MyBucketName',    # OPTIONAL
          Key        => 'MyKey',
          Version    => 'MyVersion',

        },    # OPTIONAL
      },
      ProfileName => 'MyProfileName',    # OPTIONAL
    );

    # Results:
    my $JobId = $StartSigningJobResponse->JobId;

    # Returns a L<Paws::Signer::StartSigningJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/signer/StartSigningJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

String that identifies the signing request. All calls after the first
that use this token return the same response as the first call.



=head2 B<REQUIRED> Destination => Signer_Destination

The S3 bucket in which to save your signed object. The destination
contains the name of your bucket and an optional prefix.



=head2 ProfileName => Str

The name of the signing profile.



=head2 B<REQUIRED> Source => Signer_Source

The S3 bucket that contains the object to sign or a BLOB that contains
your raw code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSigningJob in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

