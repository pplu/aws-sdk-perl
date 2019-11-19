# Generated from default/object.tt
package Paws::S3Control::JobOperation;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3Control::Types qw/S3Control_LambdaInvokeOperation S3Control_S3InitiateRestoreObjectOperation S3Control_S3SetObjectTaggingOperation S3Control_S3SetObjectAclOperation S3Control_S3CopyObjectOperation/;
  has LambdaInvoke => (is => 'ro', isa => S3Control_LambdaInvokeOperation);
  has S3InitiateRestoreObject => (is => 'ro', isa => S3Control_S3InitiateRestoreObjectOperation);
  has S3PutObjectAcl => (is => 'ro', isa => S3Control_S3SetObjectAclOperation);
  has S3PutObjectCopy => (is => 'ro', isa => S3Control_S3CopyObjectOperation);
  has S3PutObjectTagging => (is => 'ro', isa => S3Control_S3SetObjectTaggingOperation);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3PutObjectTagging' => {
                                         'class' => 'Paws::S3Control::S3SetObjectTaggingOperation',
                                         'type' => 'S3Control_S3SetObjectTaggingOperation'
                                       },
               'S3PutObjectAcl' => {
                                     'type' => 'S3Control_S3SetObjectAclOperation',
                                     'class' => 'Paws::S3Control::S3SetObjectAclOperation'
                                   },
               'S3PutObjectCopy' => {
                                      'class' => 'Paws::S3Control::S3CopyObjectOperation',
                                      'type' => 'S3Control_S3CopyObjectOperation'
                                    },
               'LambdaInvoke' => {
                                   'class' => 'Paws::S3Control::LambdaInvokeOperation',
                                   'type' => 'S3Control_LambdaInvokeOperation'
                                 },
               'S3InitiateRestoreObject' => {
                                              'type' => 'S3Control_S3InitiateRestoreObjectOperation',
                                              'class' => 'Paws::S3Control::S3InitiateRestoreObjectOperation'
                                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::JobOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::JobOperation object:

  $service_obj->Method(Att1 => { LambdaInvoke => $value, ..., S3PutObjectTagging => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::JobOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->LambdaInvoke

=head1 DESCRIPTION

The operation that you want this job to perform on each object listed
in the manifest. For more information about the available operations,
see Available Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-operations.html)
in the I<Amazon Simple Storage Service Developer Guide>.

=head1 ATTRIBUTES


=head2 LambdaInvoke => S3Control_LambdaInvokeOperation

  Directs the specified job to invoke an AWS Lambda function on each
object in the manifest.


=head2 S3InitiateRestoreObject => S3Control_S3InitiateRestoreObjectOperation

  Directs the specified job to execute an Initiate Glacier Restore call
on each object in the manifest.


=head2 S3PutObjectAcl => S3Control_S3SetObjectAclOperation

  Directs the specified job to execute a PUT Object acl call on each
object in the manifest.


=head2 S3PutObjectCopy => S3Control_S3CopyObjectOperation

  Directs the specified job to execute a PUT Copy object call on each
object in the manifest.


=head2 S3PutObjectTagging => S3Control_S3SetObjectTaggingOperation

  Directs the specified job to execute a PUT Object tagging call on each
object in the manifest.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

