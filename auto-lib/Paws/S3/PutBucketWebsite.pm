
package Paws::S3::PutBucketWebsite;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_WebsiteConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has WebsiteConfiguration => (is => 'ro', isa => S3_WebsiteConfiguration, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketWebsite');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?website');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'WebsiteConfiguration' => {
                                           'class' => 'Paws::S3::WebsiteConfiguration',
                                           'type' => 'S3_WebsiteConfiguration'
                                         },
               'ContentMD5' => {
                                 'type' => 'Str'
                               }
             },
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'auto' => 'MD5',
                                        'header_name' => 'Content-MD5'
                                      }
                    },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'ParamInHeader' => {
                       'ContentLength' => 'Content-Length'
                     },
  'IsRequired' => {
                    'Bucket' => 1,
                    'WebsiteConfiguration' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketWebsite - Arguments for method PutBucketWebsite on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketWebsite on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketWebsite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketWebsite.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketWebsite(
      Bucket               => 'MyBucketName',
      WebsiteConfiguration => {
        ErrorDocument => {
          Key => 'MyObjectKey',    # min: 1

        },    # OPTIONAL
        IndexDocument => {
          Suffix => 'MySuffix',

        },    # OPTIONAL
        RedirectAllRequestsTo => {
          HostName => 'MyHostName',
          Protocol => 'http',         # values: http, https; OPTIONAL
        },    # OPTIONAL
        RoutingRules => [
          {
            Redirect => {
              HostName         => 'MyHostName',
              HttpRedirectCode => 'MyHttpRedirectCode',    # OPTIONAL
              Protocol => 'http',    # values: http, https; OPTIONAL
              ReplaceKeyPrefixWith => 'MyReplaceKeyPrefixWith',    # OPTIONAL
              ReplaceKeyWith       => 'MyReplaceKeyWith',          # OPTIONAL
            },
            Condition => {
              HttpErrorCodeReturnedEquals =>
                'MyHttpErrorCodeReturnedEquals',                   # OPTIONAL
              KeyPrefixEquals => 'MyKeyPrefixEquals',              # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
      },
      ContentLength => 1,                 # OPTIONAL
      ContentMD5    => 'MyContentMD5',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketWebsite>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str





=head2 B<REQUIRED> WebsiteConfiguration => S3_WebsiteConfiguration






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketWebsite in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

