
package Paws::QLDB::TagResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDB::Types qw/QLDB_Tags/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => QLDB_Tags, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::QLDB::TagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'Tags' => 1
                  },
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'QLDB_Tags',
                           'class' => 'Paws::QLDB::Tags'
                         }
             },
  'ParamInURI' => {
                    'ResourceArn' => 'resourceArn'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::TagResource - Arguments for method TagResource on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $TagResourceResponse = $qldb->TagResource(
      ResourceArn => 'MyArn',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) to which you want to add the tags. For
example:

C<arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger>



=head2 B<REQUIRED> Tags => QLDB_Tags

The key-value pairs to add as tags to the specified QLDB resource. Tag
keys are case sensitive. If you specify a key that already exists for
the resource, your request fails and returns an error. Tag values are
case sensitive and can be null.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

