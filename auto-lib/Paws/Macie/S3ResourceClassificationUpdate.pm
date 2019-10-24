# Generated from default/object.tt
package Paws::Macie::S3ResourceClassificationUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Macie::Types qw/Macie_ClassificationTypeUpdate/;
  has BucketName => (is => 'ro', isa => Str, required => 1);
  has ClassificationTypeUpdate => (is => 'ro', isa => Macie_ClassificationTypeUpdate, required => 1);
  has Prefix => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Prefix' => {
                             'type' => 'Str'
                           },
               'BucketName' => {
                                 'type' => 'Str'
                               },
               'ClassificationTypeUpdate' => {
                                               'class' => 'Paws::Macie::ClassificationTypeUpdate',
                                               'type' => 'Macie_ClassificationTypeUpdate'
                                             }
             },
  'NameInRequest' => {
                       'Prefix' => 'prefix',
                       'BucketName' => 'bucketName',
                       'ClassificationTypeUpdate' => 'classificationTypeUpdate'
                     },
  'IsRequired' => {
                    'BucketName' => 1,
                    'ClassificationTypeUpdate' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie::S3ResourceClassificationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie::S3ResourceClassificationUpdate object:

  $service_obj->Method(Att1 => { BucketName => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie::S3ResourceClassificationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketName

=head1 DESCRIPTION

The S3 resources whose classification types you want to update. This
data type is used as a request parameter in the UpdateS3Resources
action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

  The name of the S3 bucket whose classification types you want to
update.


=head2 B<REQUIRED> ClassificationTypeUpdate => Macie_ClassificationTypeUpdate

  The classification type that you want to update for the resource
associated with Amazon Macie.


=head2 Prefix => Str

  The prefix of the S3 bucket whose classification types you want to
update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

