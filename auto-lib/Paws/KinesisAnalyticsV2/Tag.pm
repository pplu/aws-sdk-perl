# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::Tag;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw//;
  has Key => (is => 'ro', isa => Str, required => 1);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Key' => 1
                  },
  'types' => {
               'Key' => {
                          'type' => 'Str'
                        },
               'Value' => {
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

Paws::KinesisAnalyticsV2::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A key-value pair (the value is optional) that you can define and assign
to AWS resources. If you specify a tag that already exists, the tag
value is replaced with the value that you specify in the request. Note
that the maximum number of application tags includes system tags. The
maximum number of user-defined application tags is 50. For more
information, see Using Cost Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the I<AWS Billing and Cost Management Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key of the key-value tag.


=head2 Value => Str

  The value of the key-value tag. The value is optional.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

