
package Paws::S3::GetObjectAcl;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Key => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RequestPayer => (is => 'ro', isa => Str, predicate => 1);
  has VersionId => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetObjectAcl');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}/{Key+}?acl');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::GetObjectAclOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'Key' => 'Key',
                    'Bucket' => 'Bucket'
                  },
  'ParamInQuery' => {
                      'VersionId' => 'versionId'
                    },
  'IsRequired' => {
                    'Bucket' => 1,
                    'Key' => 1
                  },
  'types' => {
               'Bucket' => {
                             'type' => 'Str'
                           },
               'Key' => {
                          'type' => 'Str'
                        },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'RequestPayer' => {
                                   'type' => 'Str'
                                 }
             },
  'ParamInHeader' => {
                       'RequestPayer' => 'x-amz-request-payer'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectAcl - Arguments for method GetObjectAcl on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetObjectAcl on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetObjectAcl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetObjectAcl.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $GetObjectAclOutput = $s3->GetObjectAcl(
      Bucket       => 'MyBucketName',
      Key          => 'MyObjectKey',
      RequestPayer => 'requester',            # OPTIONAL
      VersionId    => 'MyObjectVersionId',    # OPTIONAL
    );

    # Results:
    my $Grants         = $GetObjectAclOutput->Grants;
    my $Owner          = $GetObjectAclOutput->Owner;
    my $RequestCharged = $GetObjectAclOutput->RequestCharged;

    # Returns a L<Paws::S3::GetObjectAclOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetObjectAcl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name of the object for which to get the ACL information.



=head2 B<REQUIRED> Key => Str

The key of the object for which to get the ACL information.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 VersionId => Str

VersionId used to reference a specific version of the object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetObjectAcl in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

