# Generated from default/object.tt
package Paws::S3Control::S3SetObjectAclOperation;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3Control::Types qw/S3Control_S3AccessControlPolicy/;
  has AccessControlPolicy => (is => 'ro', isa => S3Control_S3AccessControlPolicy);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessControlPolicy' => {
                                          'class' => 'Paws::S3Control::S3AccessControlPolicy',
                                          'type' => 'S3Control_S3AccessControlPolicy'
                                        }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::S3SetObjectAclOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3SetObjectAclOperation object:

  $service_obj->Method(Att1 => { AccessControlPolicy => $value, ..., AccessControlPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3SetObjectAclOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlPolicy

=head1 DESCRIPTION

Contains the configuration parameters for a Set Object ACL operation.
Amazon S3 batch operations passes each value through to the underlying
PUT Object acl API. For more information about the parameters for this
operation, see PUT Object acl
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTObjectPUTacl.html).

=head1 ATTRIBUTES


=head2 AccessControlPolicy => S3Control_S3AccessControlPolicy

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

