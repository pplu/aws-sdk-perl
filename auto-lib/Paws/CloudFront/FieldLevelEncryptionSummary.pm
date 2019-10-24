# Generated from default/object.tt
package Paws::CloudFront::FieldLevelEncryptionSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFront::Types qw/CloudFront_QueryArgProfileConfig CloudFront_ContentTypeProfileConfig/;
  has Comment => (is => 'ro', isa => Str);
  has ContentTypeProfileConfig => (is => 'ro', isa => CloudFront_ContentTypeProfileConfig);
  has Id => (is => 'ro', isa => Str, required => 1);
  has LastModifiedTime => (is => 'ro', isa => Str, required => 1);
  has QueryArgProfileConfig => (is => 'ro', isa => CloudFront_QueryArgProfileConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'ContentTypeProfileConfig' => {
                                               'class' => 'Paws::CloudFront::ContentTypeProfileConfig',
                                               'type' => 'CloudFront_ContentTypeProfileConfig'
                                             },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               'QueryArgProfileConfig' => {
                                            'class' => 'Paws::CloudFront::QueryArgProfileConfig',
                                            'type' => 'CloudFront_QueryArgProfileConfig'
                                          },
               'Comment' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'Id' => 1,
                    'LastModifiedTime' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::FieldLevelEncryptionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::FieldLevelEncryptionSummary object:

  $service_obj->Method(Att1 => { Comment => $value, ..., QueryArgProfileConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::FieldLevelEncryptionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Comment

=head1 DESCRIPTION

A summary of a field-level encryption item.

=head1 ATTRIBUTES


=head2 Comment => Str

  An optional comment about the field-level encryption item.


=head2 ContentTypeProfileConfig => CloudFront_ContentTypeProfileConfig

  A summary of a content type-profile mapping.


=head2 B<REQUIRED> Id => Str

  The unique ID of a field-level encryption item.


=head2 B<REQUIRED> LastModifiedTime => Str

  The last time that the summary of field-level encryption items was
modified.


=head2 QueryArgProfileConfig => CloudFront_QueryArgProfileConfig

  A summary of a query argument-profile mapping.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

