# Generated from json/callargs_class.tt

package Paws::Shield::AssociateDRTLogBucket;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Shield::Types qw//;
  has LogBucket => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateDRTLogBucket');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Shield::AssociateDRTLogBucketResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogBucket' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'LogBucket' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::AssociateDRTLogBucket - Arguments for method AssociateDRTLogBucket on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDRTLogBucket on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method AssociateDRTLogBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDRTLogBucket.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $AssociateDRTLogBucketResponse = $shield->AssociateDRTLogBucket(
      LogBucket => 'MyLogBucket',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/AssociateDRTLogBucket>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogBucket => Str

The Amazon S3 bucket that contains your flow logs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDRTLogBucket in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

